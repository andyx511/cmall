package com.alex.ni.service;

import com.alex.ni.model.AmsBrandRecommend;

import java.util.List;

/**
 * @author NiDingbo
 * @date 2019/10/21
 * @des
 *
 * #
 * #                  ___====-_  _-====___
 * #            _--^^^#####//      \\#####^^^--_
 * #         _-^##########// (    ) \\##########^-_
 * #        -############//  |\^^/|  \\############-
 * #      _/############//   (@::@)   \\############\_
 * #     /#############((     \\//     ))#############\
 * #    -###############\\    (oo)    //###############-
 * #   -#################\\  / VV \  //#################-
 * #  -###################\\/      \//###################-
 * # _#/|##########/\######(   /\   )######/\##########|\#_
 * # |/ |#/\#/\#/\/  \#/\##\  |  |  /##/\#/  \/\#/\#/\#| \|
 * # `  |/  V  V  `   V  \#\| |  | |/#/  V   '  V  V  \|  '
 * #    `   `  `      `   / | |  | | \   '      '  '   '
 * #                     (  | |  | |  )
 * #                    __\ | |  | | /__
 * #                   (vvv(VVV)(VVV)vvv)
 * #                  神兽保佑
 * #                代码无BUG!
 * #
 */

public interface AmsBrandRecommendService {
    List<AmsBrandRecommend> list();
    Integer add(AmsBrandRecommend brandRecommend);
    Integer edit(AmsBrandRecommend brandRecommend);
    Integer delete(Integer id);
}
