//
//  Question.swift
//  Quizzler
//
//  Created by Владислав on 05/07/2019.
//  Copyright © 2019 Murygin Vladislav. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        list.append(Question(text: "Черепахи плачут.", correctAnswer: true))
        list.append(Question(text: "Крабы поднимаются к поверхности на дельфинах.", correctAnswer: false))
        list.append(Question(text: "В чае содержатся вещества, способствующие похуданию.", correctAnswer: false))
        list.append(Question(text: "Зеленый картофель настолько ядовит, что может убить ребенка.", correctAnswer: true))
        list.append(Question(text: "От картошки толстеют.", correctAnswer: false))
        list.append(Question(text: "Кончик меча у меч-рыбы отравлен смертоносным мышьяком.", correctAnswer: false))
        list.append(Question(text: "Голубые розы растут только в Китае.", correctAnswer: false))
        list.append(Question(text: "На вершине Эвереста растут цветы.", correctAnswer: false))
        list.append(Question(text: "Отправляясь на обед, самка бегемота находит няньку для своего детеныша.", correctAnswer: true))
        list.append(Question(text: "Верблюды во время странствий по пустыне хранят запас воды в своих горбах.", correctAnswer: false))
        list.append(Question(text: "В Африке водятся мухи-людоеды.", correctAnswer: true))
        list.append(Question(text: "Кобра танцует под звуки дудочки факира.", correctAnswer: false))
        list.append(Question(text: "Крокодилы могут взбираться на деревья.", correctAnswer: true))
        list.append(Question(text: "У осьминогов прямоугольные зрачки.", correctAnswer: true))
        list.append(Question(text: "Американские астронавты 45 лет назад устроили в космосе забастовку.", correctAnswer: true))
        list.append(Question(text: "Спутники Сатурна Эпиметей и Янус периодически меняются орбитами.", correctAnswer: true))
        list.append(Question(text: "Из-за особого рациона кровь у летучей мыши (бразильского складчатогуба) не красного, а голубого цвета.", correctAnswer: false))
        list.append(Question(text: "Дикобраз может пораниться собственными иглами.", correctAnswer: true))
        list.append(Question(text: "Изюм содержит в своём составе тетрагидроканнабинол и поэтому запрещён к ввозу в Судан и Филиппины.", correctAnswer: false))
        list.append(Question(text: "На побережье Хабаровского края произрастает морозоустойчивый вид пальм.", correctAnswer: false))
        list.append(Question(text: "Бамбук цветёт примерно раз в 60 лет.", correctAnswer: true))
        list.append(Question(text: "Российская река Делькю несёт свои воды сразу в два океана.", correctAnswer: true))
    }

}

