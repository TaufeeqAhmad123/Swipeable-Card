class CardModel {
  final String imageUrl;
  final String name;
  List<NFTDataModel> nftDataModel;

  CardModel(this.imageUrl, this.name, this.nftDataModel);
}

// Sample list of candidates
final List<CardModel> candidates = [
  CardModel(
    'https://i.pinimg.com/564x/b2/ed/70/b2ed709ff13bd2ac616d805d81c561ac.jpg',
    'John Doe',
    [
      NFTDataModel(
        ethilim: '1.47',
        viewCount: '38554',
        starCount: '1521',
      ),
    ],
  ),
    CardModel(
    'https://i.pinimg.com/564x/16/b6/ec/16b6ec8aa929cf9181f5a779dea46e34.jpg',
    'Comic charachter ',
    [
      NFTDataModel(
        ethilim: '5.37',
        viewCount: '84034',
        starCount: '29485',
      ),
    ],
  ),
  
  CardModel(
    'https://i.pinimg.com/564x/02/13/42/0213422266fde442ec445218ce39184f.jpg',
    'Meme Point 😂',
    [
      NFTDataModel(
        ethilim: '5.37',
        viewCount: '84034',
        starCount: '29485',
      ),
    ],
  ),
  CardModel(
    'https://i.pinimg.com/564x/f8/e5/3a/f8e53acd872de1c285bfe2fd8ffcdfe2.jpg',
    'Art Gallery ',
    [
      NFTDataModel(
        ethilim: '5.37',
        viewCount: '84034',
        starCount: '29485',
      ),
    ],
  ),
CardModel(
    'https://i.pinimg.com/564x/70/ee/1b/70ee1bbe11494bba19a6a49fe9e2f158.jpg',
    'Mohdhakimy',
    [
      NFTDataModel(
        ethilim: '3.12',
        viewCount: '14649',
        starCount: '12453',
      ),
    ],
  ),
];

class NFTDataModel {
  final String ethilim;
  final String viewCount;
  final String starCount;

  NFTDataModel(
      {required this.ethilim,
      required this.viewCount,
      required this.starCount});
}
