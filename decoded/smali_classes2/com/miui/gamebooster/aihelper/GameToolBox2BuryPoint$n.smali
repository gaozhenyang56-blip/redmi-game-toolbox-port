.class final Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->trackSwitchStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/p<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "Loj/t;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameToolBox2BuryPoint.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$trackSwitchStatus$1\n+ 2 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/aihelper/GameToolBox2BuryPoint\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,868:1\n604#2,4:869\n613#2,2:877\n604#2,4:879\n604#2,4:883\n604#2,4:887\n615#2,4:891\n613#2,6:895\n613#2,2:901\n604#2,4:903\n604#2,4:907\n615#2,4:911\n613#2,6:915\n1549#3:873\n1620#3,3:874\n*S KotlinDebug\n*F\n+ 1 GameToolBox2BuryPoint.kt\ncom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$trackSwitchStatus$1\n*L\n467#1:869,4\n485#1:877,2\n488#1:879,4\n493#1:883,4\n499#1:887,4\n485#1:891,4\n522#1:895,6\n550#1:901,2\n553#1:903,4\n577#1:907,4\n550#1:911,4\n590#1:915,6\n479#1:873\n479#1:874,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;

    invoke-direct {v0}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;->a:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(ZZ)V
    .locals 13

    const/4 p1, 0x6

    new-array p1, p1, [Loj/l;

    const-string v0, "tip"

    const-string v1, "1513.2.4.1.39278"

    invoke-static {v0, v1}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    if-eqz p2, :cond_0

    const-string p2, "\u72c2\u66b4\u6a21\u5f0f"

    goto :goto_0

    :cond_0
    const-string p2, "\u5747\u8861\u6a21\u5f0f"

    :goto_0
    const-string v0, "mode_status"

    invoke-static {v0, p2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    sget-object p2, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getStayPage(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "stay_page"

    invoke-static {v3, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, p1, v3

    invoke-static {}, La8/u0;->j()Z

    move-result v2

    const-string v4, "\u4e0d\u652f\u6301"

    if-nez v2, :cond_1

    move-object v2, v4

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getPerformancePolicyGear(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v5, "performance_policy_gear"

    invoke-static {v5, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, p1, v5

    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getAIFunctionSupport(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "support_AI_function"

    invoke-static {v6, v2}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, p1, v6

    const/4 v2, 0x5

    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getGson(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lcom/google/gson/Gson;

    move-result-object v7

    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getAIFunctionList(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Ljava/lang/String;

    move-result-object p2

    new-instance v8, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n$a;

    invoke-direct {v8}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n$a;-><init>()V

    invoke-virtual {v8}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v7, p2, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const-string v7, "null cannot be cast to non-null type kotlin.collections.List<com.miui.gamebooster.aihelper.GameToolBox2BuryPoint.AIFunctionBuryPointEntity?>"

    invoke-static {p2, v7}, Lbk/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {p2, v8}, Lqj/l;->o(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$a;->a()Ljava/util/Map;

    move-result-object v8

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const-string p2, "AI_function_list"

    invoke-static {p2, v7}, Loj/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Loj/l;

    move-result-object p2

    aput-object p2, p1, v2

    invoke-static {p1}, Lqj/d0;->g([Loj/l;)Ljava/util/Map;

    move-result-object v9

    sget-object p1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    new-instance p1, Lcom/miui/gamebooster/model/j;

    invoke-direct {p1}, Lcom/miui/gamebooster/model/j;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/o;->e()Z

    move-result p1

    const-string p2, "\u662f"

    const-string v2, "\u5426"

    const-string v7, "\u5f00"

    const-string v8, "\u5173"

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->S()Z

    move-result p1

    if-nez p1, :cond_4

    move-object p1, v4

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    move-object p1, v7

    goto :goto_4

    :cond_5
    move-object p1, v8

    :goto_4
    const-string v10, "super_resolution_status"

    invoke-interface {v9, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->w()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils;->Q()Z

    move-result p1

    if-nez p1, :cond_6

    move-object p1, v4

    goto :goto_5

    :cond_6
    invoke-static {}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->a()Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/gamebooster/utils/GameBoxVisionEnhanceUtils$g;->b()Z

    move-result p1

    if-eqz p1, :cond_7

    move-object p1, v7

    goto :goto_5

    :cond_7
    move-object p1, v8

    :goto_5
    const-string v10, "Intelligent_insertion_status"

    invoke-interface {v9, v10, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La8/g0;->I()Z

    move-result p1

    if-nez p1, :cond_8

    move-object p1, v4

    goto :goto_6

    :cond_8
    sget-object p1, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getContext(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lcom/miui/securitycenter/Application;

    move-result-object v10

    invoke-static {}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getLatestPkgName$p()Ljava/lang/String;

    move-result-object v11

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getUid(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)I

    move-result p1

    invoke-static {v10, v11, p1}, La8/l0;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v0, :cond_c

    if-eq p1, v3, :cond_b

    if-eq p1, v5, :cond_a

    if-eq p1, v6, :cond_9

    const-string p1, "\u539f\u59cb\u753b\u9762"

    goto :goto_6

    :cond_9
    const-string p1, "\u6e38\u620fHDR"

    goto :goto_6

    :cond_a
    const-string p1, "\u660e\u8273\u753b\u9762"

    goto :goto_6

    :cond_b
    const-string p1, "\u660e\u4eae\u753b\u9762"

    goto :goto_6

    :cond_c
    const-string p1, "\u9c9c\u8273\u753b\u9762"

    :goto_6
    const-string v3, "picture_style"

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    goto :goto_7

    :cond_d
    move-object p1, v2

    :goto_7
    const-string v3, "is_support_display_enhance"

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lt7/b;->d()Lt7/b;

    move-result-object p1

    invoke-static {}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getLatestPkgName$p()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->INSTANCE:Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getUid(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)I

    move-result v6

    invoke-virtual {p1, v3, v6}, Lt7/b;->e(Ljava/lang/String;I)Lt7/d;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sMotionModel is "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$log(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;)V

    new-instance v3, Lcom/miui/gamebooster/model/v;

    invoke-direct {v3}, Lcom/miui/gamebooster/model/v;-><init>()V

    invoke-virtual {v3}, Lcom/miui/gamebooster/model/v;->e()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getSMotionManager(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lt7/b;

    move-result-object v3

    invoke-virtual {v3}, Lt7/b;->l()Z

    move-result v3

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getAdvanceSettingsUtil(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)La8/b;

    move-result-object v6

    const/high16 v10, 0x40800000    # 4.0f

    invoke-virtual {v6, v10}, La8/b;->t(F)Z

    move-result v6

    invoke-virtual {p1}, Lt7/d;->b()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5, v3, v6, v10}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getTouchEnhanceValue(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "super_follow_hand_status"

    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getSMotionManager(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lt7/b;

    move-result-object v3

    invoke-virtual {v3}, Lt7/b;->m()Z

    move-result v3

    invoke-virtual {p1}, Lt7/d;->c()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v3, v0, v6}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getTouchEnhanceValue(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Intelligent_hot_zone_status"

    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getSMotionManager(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lt7/b;

    move-result-object v3

    invoke-virtual {v3}, Lt7/b;->j()Z

    move-result v3

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getAdvanceSettingsUtil(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)La8/b;

    move-result-object v6

    const/high16 v10, 0x40600000    # 3.5f

    invoke-virtual {v6, v10}, La8/b;->t(F)Z

    move-result v6

    invoke-virtual {p1}, Lt7/d;->e()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v5, v3, v6, v11}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getTouchEnhanceValue(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Intelligent_anti_shake_status"

    invoke-interface {v9, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getAdvanceSettingsUtil(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)La8/b;

    move-result-object v3

    invoke-virtual {v3, v10}, La8/b;->t(F)Z

    move-result v3

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getSMotionManager(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lt7/b;

    move-result-object v6

    invoke-virtual {v6}, Lt7/b;->n()Z

    move-result v6

    and-int/2addr v3, v6

    invoke-virtual {p1}, Lt7/d;->d()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v5, v3, v0, p1}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getTouchEnhanceValue(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;ZZLjava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "edge_anti_touch_status"

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    goto :goto_8

    :cond_e
    move-object p1, v2

    :goto_8
    const-string v3, "is_support_touch_enhance"

    invoke-interface {v9, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/miui/gamebooster/model/p;

    invoke-direct {p1}, Lcom/miui/gamebooster/model/p;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/o;->e()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getUid(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)I

    move-result p1

    invoke-static {p1}, La8/g0;->o(I)Z

    move-result p1

    if-nez p1, :cond_f

    move-object p1, v4

    goto :goto_9

    :cond_f
    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getContext(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "linkturbo_ai_mode_enable"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_10

    move-object p1, v7

    goto :goto_9

    :cond_10
    move-object p1, v8

    :goto_9
    const-string v1, "AI_data_status"

    invoke-interface {v9, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lu6/f;->b()Z

    move-result p1

    invoke-static {}, Lm6/a;->n()Z

    move-result v1

    and-int/2addr p1, v1

    if-eqz p1, :cond_11

    move-object p1, v7

    goto :goto_a

    :cond_11
    move-object p1, v8

    :goto_a
    const-string v1, "WLAN_status"

    invoke-interface {v9, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, La8/g0;->u()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_b

    :cond_12
    invoke-static {v5}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->access$getContext(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;)Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lm6/b;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_13

    move-object v4, v7

    goto :goto_b

    :cond_13
    move-object v4, v8

    :goto_b
    const-string p1, "cell_status"

    invoke-interface {v9, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    goto :goto_c

    :cond_14
    move-object p1, v2

    :goto_c
    const-string v0, "is_support_net_accelerate"

    invoke-interface {v9, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/miui/gamebooster/model/l;

    invoke-direct {p1}, Lcom/miui/gamebooster/model/l;-><init>()V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/l;->e()Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-static {}, Lv6/a;->b()Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-static {}, Lv6/a;->a()Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_d

    :cond_15
    move-object v7, v8

    :goto_d
    const-string p1, "immersion_sound_status"

    invoke-interface {v9, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_16
    move-object p2, v2

    :goto_e
    const-string p1, "is_support_game_sound"

    invoke-interface {v9, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const-string v8, "status"

    move-object v7, v5

    invoke-static/range {v7 .. v12}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;->track$default(Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint;Ljava/lang/String;Ljava/util/Map;ZILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/aihelper/GameToolBox2BuryPoint$n;->a(ZZ)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method
