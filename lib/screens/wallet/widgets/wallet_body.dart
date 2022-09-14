import 'package:flutter/material.dart';

import '../../../core/asset.dart';
import '../../../shared/template/default_subtitle.dart';
import '../../../shared/template/default_title.dart';
import '../../../use_cases/models/cripto_model.dart';
import 'cripto_item.dart';
import 'hide_button.dart';
import 'total_value.dart';

class WalletBody extends StatelessWidget {
  WalletBody({
    Key? key,
  }) : super(key: key);

  final List<CriptoModel> criptoModelList = [
    CriptoModel(
      abbreviation: 'BTC',
      name: 'Bitcoin',
      valueReais: 6557,
      valueCripto: 0.65,
      image: btcImage,
    ),
    CriptoModel(
      abbreviation: 'ETC',
      name: 'Ethereum',
      valueReais: 7996,
      valueCripto: 0.94,
      image: ethImage,
    ),
    CriptoModel(
      abbreviation: 'LTC',
      name: 'Litecoin',
      valueReais: 245,
      valueCripto: 0.82,
      image: ltcImage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              DefaultTitle(
                title: 'Cripto',
                color: Color.fromRGBO(224, 43, 87, 1),
              ),
              HideButton(),
            ],
          ),
          const TotalValue(
            totalReais: 14798,
          ),
          const DefaultSubtitle('Valor total de moedas'),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CriptoItem(
                  criptoModel: criptoModelList[index],
                );
              },
              itemCount: criptoModelList.length,
            ),
          ),
        ],
      ),
    );
  }
}