.class public Leg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Leg/m;->a:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Leg/m;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Leg/m;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()V
    .locals 6

    sget-object v0, Leg/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;

    const-string v2, "#ECE9FC"

    const-string v3, "#302D59"

    const-string v4, "#7566ED"

    const v5, 0x7f080e85

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;

    const-string v2, "#EAF0F9"

    const-string v3, "#343F4F"

    const-string v4, "#709CCB"

    const v5, 0x7f080e83

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;

    const-string v2, "#FAEED1"

    const-string v3, "#443808"

    const-string v4, "#FFA800"

    const v5, 0x7f080e86

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;

    const-string v2, "#E4F5D6"

    const-string v3, "#144015"

    const-string v4, "#3FD04F"

    const v5, 0x7f080e84

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/miui/common/card/models/PopularActionCardModel$PopularIconItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    sget-object v0, Leg/m;->a:Landroid/util/ArrayMap;

    new-instance v12, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v2, 0x7f1204af

    const v3, 0x7f1211fc

    const/4 v4, 0x0

    const/4 v5, -0x1

    const v6, 0x7f080e7e

    const-string v7, "#FFE4DD"

    const-string v8, "#3D170D"

    const-string v9, "#FF7350"

    const-string v10, "#Intent;action=miui.intent.action.HB_MAIN_ACTIVITY;end"

    const-string v11, "002-002-1628148303383"

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "#FF7350"

    invoke-virtual {v0, v1, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v14, 0x7f121201

    const v15, 0x7f121200

    const/16 v16, 0x0

    const/16 v17, -0x1

    const v18, 0x7f080e81

    const-string v19, "#ECE9FC"

    const-string v20, "#302D59"

    const-string v21, "#7C6DF0"

    const-string v22, "#Intent;action=com.miui.cleaner.action.GARBAGE_VIDEO_CLEAN;end"

    const-string v23, "002-002-1628155722768"

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "#7C6DF0"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v4, 0x7f1211f3

    const v5, 0x7f1211f2

    const/4 v6, 0x0

    const/4 v7, -0x1

    const v8, 0x7f080e78

    const-string v9, "#FCE8D9"

    const-string v10, "#43280E"

    const-string v11, "#FE811E"

    const-string v12, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    const-string v13, "002-002-1628156933749"

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "#FE811E"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v4, 0x7f1211f6

    const v5, 0x7f1211f5

    const v8, 0x7f080e7a

    const-string v9, "#E4F5D6"

    const-string v10, "#144015"

    const-string v11, "#3FD04F"

    const-string v12, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    const-string v13, "002-002-1628152220743"

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "#3FD04F"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v4, 0x7f1211fe

    const v5, 0x7f1211fd

    const v8, 0x7f080e7f

    const-string v9, "#DFF2FB"

    const-string v10, "#083D58"

    const-string v11, "#46B7EC"

    const-string v12, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    const-string v13, "002-002-1628152243187"

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "#46B7EC"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v4, 0x7f1211fa

    const v5, 0x7f1211f9

    const v8, 0x7f080e7c

    const-string v9, "#FAEED1"

    const-string v10, "#443808"

    const-string v11, "#FFA800"

    const-string v12, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    const-string v13, "002-002-1628155946998"

    move-object v3, v1

    invoke-direct/range {v3 .. v13}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "#FFA800"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c()V
    .locals 24

    sget-object v0, Leg/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v12, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v2, 0x7f1211f4

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const v6, 0x7f080e79

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "#Intent;action=miui.intent.action.SET_FIREWALL;end"

    const-string v11, "002-002-1628156933749"

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v14, 0x7f1211f7

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, -0x1

    const v18, 0x7f080e7b

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "#Intent;action=com.miui.securitycenter.action.TRANSITION;end"

    const-string v23, "002-002-1628152220743"

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v3, 0x7f1211ff

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const v7, 0x7f080e80

    const/4 v10, 0x0

    const-string v11, "#Intent;action=miui.intent.action.NETWORKASSISTANT_ENTRANCE;end"

    const-string v12, "002-002-1628152243187"

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;

    const v14, 0x7f1211fb

    const v18, 0x7f080e7d

    const-string v22, "#Intent;action=com.miui.securitycenter.action.FIRST_AID_KIT;end"

    const-string v23, "002-002-1628155946998"

    move-object v13, v1

    invoke-direct/range {v13 .. v23}, Lcom/miui/common/card/models/PopularActionCardModel$PopularActionCardItemData;-><init>(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
