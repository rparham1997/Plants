//
//  PlantService.swift
//  Plants
//
//  Created by Ramar Parham on 9/5/23.
//

import Foundation

class PlantService {
    static let instance = PlantService()
    private init() {}
}

extension PlantService {
    func getPlantCategories() -> [PlantCategory] {
        [
            .init(image: .OutdoorIcon, name: "Outdoor"),
            .init(image: .IndoorIcon, name: "Indoor"),
            .init(image: .OfficeIcon, name: "Office"),
            .init(image: .OtherIcon, name: "Other"),
        ]
    }
    
    func getPlants() -> [Plant] {
        [
            .init(
                name: "Round Cactus",
                price: "$21.9",
                desc: "dfjfsdjkskjfdsjkdfsjkdfsjksfdjksdfjkdsjkfdsjfdskfsduhfsdhusfdhuisfdhuisfdhuifdhudsfldfnvnsvdnjvsdnvdsnvdsnlkvdsknlvdsnlkvdnklvdsnklvdnklvdsklnvdsnklsdjsdjhsdkjfdhefwlsdfndfsjfdslkgfkldflnkggfdgjiewriuerwdsflkzmxhlksklhjgdsfjkhgdshgdsfhjklgdsfhjklgdsfhjkldgsfhkjlfgdshjkfgdshkjlgdfshfdgshguiyuyiqwuiyortefhdwpduefdhsfdweuhiewiohuifdsjlkshfjaspoiqwiouerwuiyrtfsdkljdsfkldsfkljsdkljdfjdshfshkjsdfjlkfdsjklfsdjlksfdfsdlj",
                image: .Plant1,
                type: .outdoor,
                size: .medium,
                level: .easy,
                bannerImage: .PlantBanner
            ),
            .init(
                name: "Second Plant",
                price: "$15.9",
                desc: "dfjfsdjkskjfdsjkdfsjkdfsjksfdjksdfjkdsjkfdsjfdskfsduhfsdhusfdhuisfdhuisfdhuifdhudsfldfnvnsvdnjvsdnvdsnvdsnlkvdsknlvdsnlkvdnklvdsnklvdnklvdsklnvdsnklsdjsdjhsdkjfdhefwlsdfndfsjfdslkgfkldflnkggfdgjiewriuerwdsflkzmxhlksklhjgdsfjkhgdshgdsfhjklgdsfhjklgdsfhjkldgsfhkjlfgdshjkfgdshkjlgdfshfdgshguiyuyiqwuiyortefhdwpduefdhsfdweuhiewiohuifdsjlkshfjaspoiqwiouerwuiyrtfsdkljdsfkldsfkljsdkljdfjdshfshkjsdfjlkfdsjklfsdjlksfdfsdlj",
                image: .Plant2,
                type: .indoor,
                size: .large,
                level: .difficult,
                bannerImage: .PlantBanner
            ),
            
                .init(
                    name: "Second Plant",
                    price: "$15.9",
                    desc: "dfjfsdjkskjfdsjkdfsjkdfsjksfdjksdfjkdsjkfdsjfdskfsduhfsdhusfdhuisfdhuisfdhuifdhudsfldfnvnsvdnjvsdnvdsnvdsnlkvdsknlvdsnlkvdnklvdsnklvdnklvdsklnvdsnklsdjsdjhsdkjfdhefwlsdfndfsjfdslkgfkldflnkggfdgjiewriuerwdsflkzmxhlksklhjgdsfjkhgdshgdsfhjklgdsfhjklgdsfhjkldgsfhkjlfgdshjkfgdshkjlgdfshfdgshguiyuyiqwuiyortefhdwpduefdhsfdweuhiewiohuifdsjlkshfjaspoiqwiouerwuiyrtfsdkljdsfkldsfkljsdkljdfjdshfshkjsdfjlkfdsjklfsdjlksfdfsdlj",
                    image: .Plant3,
                    type: .outdoor,
                    size: .large,
                    level: .difficult,
                    bannerImage: .PlantBanner,
                    showOnHomeScreen: false
                ),
            
                .init(
                    name: "Easter Cactus",
                    price: "$15.9",
                    desc: "dfjfsdjkskjfdsjkdfsjkdfsjksfdjksdfjkdsjkfdsjfdskfsduhfsdhusfdhuisfdhuisfdhuifdhudsfldfnvnsvdnjvsdnvdsnvdsnlkvdsknlvdsnlkvdnklvdsnklvdnklvdsklnvdsnklsdjsdjhsdkjfdhefwlsdfndfsjfdslkgfkldflnkggfdgjiewriuerwdsflkzmxhlksklhjgdsfjkhgdshgdsfhjklgdsfhjklgdsfhjkldgsfhkjlfgdshjkfgdshkjlgdfshfdgshguiyuyiqwuiyortefhdwpduefdhsfdweuhiewiohuifdsjlkshfjaspoiqwiouerwuiyrtfsdkljdsfkldsfkljsdkljdfjdshfshkjsdfjlkfdsjklfsdjlksfdfsdlj",
                    image: .Plant4,
                    type: .outdoor,
                    size: .large,
                    level: .difficult,
                    bannerImage: .PlantBanner,
                    showOnHomeScreen: false
                )
        ]
    }
}
