// ブラウザ開く、loadイベント発火
window.addEventListener('turbo:load', function () {
  
  const parentCategory = document.getElementById('parent-category')
  const selectWrap = document.getElementById('select-wrap')
  
  // 選択フォームの繰り返し表示
  const selectChildElement = (selectForm) => {
    if (document.getElementById(selectForm) !== null) {
      document.getElementById(selectForm).remove()
    }
  }

  // Ajax通信
  const XHR = new XMLHttpRequest();
  const categoryXHR = (id) => {
    XHR.open("GET", `/guidances/surf_point/${id}`, true);
    XHR.responseType = "json";
    XHR.send();
  }
  
  // 子の値を全て取得する関数
  const getChildCategoryData = () => {
    const parentValue = parentCategory.value
    categoryXHR(parentValue)

    // コントローラーからJSON形式でレスポンスの受信が成功した時に、onload発火
    XHR.onload = () => {
      const items = XHR.response.item;
      appendChildSelect(items)
      const childCategory = document.getElementById('child-select')
      
      // 子のプルダウンの値が変化→孫のイベント発火
      childCategory.addEventListener('change', () => {
        selectChildElement('grand-child-select-wrap')
        getGrandchildCategoryData(childCategory)
      })
    }
  }

  // 子のプルダウンを表示させる関数
  const appendChildSelect = (items) => {

    const childWrap = document.createElement('div')
    const childSelect = document.createElement('select')

    childWrap.setAttribute('id', 'child-select-wrap')
    childSelect.setAttribute('id', 'child-select')
    // 子の"child_id"をparamsとして、サーバー側に送る
    childSelect.setAttribute('name', 'child_id');

    // 子の初期値を設定
    const childDefaultOption = document.createElement('option');
    childDefaultOption.innerHTML = '---'; // 初期値のラベルを設定
    childDefaultOption.setAttribute('value', ''); // 初期値の値を設定
    childSelect.appendChild(childDefaultOption);
    
    // forEach文でitem（子の値）を繰り返す
    items.forEach(item => {
      const childOption = document.createElement('option')
      childOption.innerHTML = item.name
      childOption.setAttribute('value', item.id)
      childSelect.appendChild(childOption)
    });

    childWrap.appendChild(childSelect)
    selectWrap.appendChild(childWrap)
  }
  
  // 孫の値を全て取得する関数
  const getGrandchildCategoryData = (grandchildCategory) => {
    const grandchildValue = grandchildCategory.value
    categoryXHR(grandchildValue)

    // コントローラーからJSON形式でレスポンスの受信が成功した時に、onload発火
    XHR.onload = () => {
      const GrandChildItems = XHR.response.item;
      appendGrandChildSelect(GrandChildItems)
    }
  }

  // 孫のプルダウンを表示させる関数
  const appendGrandChildSelect = (items) => {
    const childWrap = document.getElementById('child-select-wrap')
    const grandchildWrap = document.createElement('div')
    const grandchildSelect = document.createElement('select')

    grandchildWrap.setAttribute('id', 'grand-child-select-wrap')
    grandchildSelect.setAttribute('id', 'grand-child-select')
    // 孫の"grandchild_id"をparamsとして、サーバー側に送る
    grandchildSelect.setAttribute('name', 'grandchild_id')

    // 孫の初期値を設定
    const grandchildDefaultOption = document.createElement('option');
    grandchildDefaultOption.innerHTML = '---'; // 初期値のラベルを設定
    grandchildDefaultOption.setAttribute('value', ''); // 初期値の値を設定
    grandchildSelect.appendChild(grandchildDefaultOption);
    
    // forEach文でitem（孫の値）を繰り返す
    items.forEach(item => {
      const grandchildOption = document.createElement('option')
      grandchildOption.innerHTML = item.name
      grandchildOption.setAttribute('value', item.id)

      grandchildSelect.appendChild(grandchildOption)
    });

    grandchildWrap.appendChild(grandchildSelect)
    childWrap.appendChild(grandchildWrap)
  }

  // 親を選択した後の発火するイベント
  parentCategory.addEventListener('change', function () {
    selectChildElement('child-select-wrap')
    getChildCategoryData()
  })

  // 検索後にセレクトボックスを初期値に戻す
  const searchButton = document.querySelector('[type="submit"]');

  searchButton.addEventListener('click', function() {
    setTimeout(() => { // setTimeoutを使って遅延させる
      // 親カテゴリのセレクトボックスを初期状態に戻す
      const parentCategory = document.getElementById('parent-category');
      parentCategory.value = '';

      // 子、孫カテゴリのセレクトボックスが存在する場合は削除する
      const childSelectWrap = document.getElementById('child-select-wrap');
      if (childSelectWrap) childSelectWrap.remove();

      const grandChildSelectWrap = document.getElementById('grand-child-select-wrap');
      if (grandChildSelectWrap) grandChildSelectWrap.remove();
    }, 100); // 100ミリ秒後に実行する
  });

});