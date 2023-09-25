# 親カテゴリー
chiba,aichi,wakayama = SurfPoint.create([{name: "千葉"}, {name: "愛知"},{name: "和歌山"}])

# 子カテゴリー 千葉
chiba_north,katsuura,chiba_south = chiba.children.create([{name: "千葉北"},{name: "勝浦"},{name: "千葉南"}])

# 孫カテゴリー 千葉北
chiba_north.children.create([{name: "一宮"}, {name: "片貝"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])

# 孫カテゴリー 勝浦
katsuura.children.create([{name: "御宿"}, {name: "部原"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])

# 孫カテゴリー 千葉南
chiba_south.children.create([{name: "鴨川"}, {name: "白渚"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])

# 子カテゴリー 愛知
irago,toyohashi = aichi.children.create([{name: "伊良湖"},{name: "豊橋"}])

# 孫カテゴリー 伊良湖
irago.children.create([{name: "ロングビーチ"}, {name: "ロコ"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])

# 孫カテゴリー 豊橋
toyohashi.children.create([{name: "老人"}, {name: "潮見坂"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])

# 子カテゴリー 和歌山
wakayama.children.create([{name: "御坊"},{name: "磯の浦"},{name: "ローカルポイント"},{name: "波の状況によって判断"}])