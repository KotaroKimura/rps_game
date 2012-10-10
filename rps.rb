 #encoding: UTF-8
 #初期設定
 hand = {1=> "rock", 2=>"scissors", 3=>"paper"}
 times = 1 #対戦回数
 history = "戦績："
 
 loop do
    #乱数取得によりコンピュータの手を決定
    computer1 = rand(3) + 1
    computer2 = rand(3) + 1
    
    #お互いの手を表示
    print "コンピュータ１の手: ", hand[computer1], "\n" 
    print "コンピュータ２の手: ", hand[computer2], "\n"
 
    #勝敗、あいこを判定
    result = (computer1 + 3 - computer2) % 3
    if result == 1 then
        #プレイヤーの負けの場合
        print "computer2の勝ち\n"
        print times, "\n"
        exit
        
    elsif result == 2 then
        #プレイヤーの勝ちの場合
        print "computer1の勝ち\n"
        print times, "\n"
        exit
        
    elsif result == 0 then
        #あいこの場合
        print "あいこです\n"
        times += 1
    end
end