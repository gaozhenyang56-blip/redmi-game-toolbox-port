.class public final Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/ui/presenter/IFunctionItemPresenter;


# instance fields
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public fetchFunctionItem(I)V
    .locals 8
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    new-instance v4, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;

    invoke-direct {v4, p0, p1}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter$fetchFunctionItem$callback$1;-><init>(Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;I)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string p1, "location"

    const-string v0, "all"

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->virtualSimInstalled()Z

    move-result v0

    invoke-static {}, Lcom/miui/networkassistant/utils/VirtualSimUtil;->businessHallExist()Z

    move-result v1

    const-string v3, "netRoamAppExist"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    const-string v5, "com.miui.virtualsim"

    invoke-static {v0, v5}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const-string v5, "netRoamVersionCode"

    invoke-virtual {p1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "contactMiHallAppExist"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lx4/f1;->r(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_1
    const-string v0, "contactMiHallVersionCode"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oaid"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "trafficRemaining"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/16 v5, 0x0

    const-string v0, "billsRemaining"

    invoke-virtual {p1, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-wide/16 v5, -0x1

    invoke-virtual {p1, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/4 v0, 0x2

    const-string v1, "trafficType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "isMiPhoneInHome"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    const-string v3, "isPad"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "apiVersion"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/DeviceUtil;->isDarkMode(Landroid/content/Context;)Z

    move-result v0

    const-string v3, "darkMode"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {}, Lme/w;->e0()Z

    move-result v0

    const-string v3, "isSupportSim"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "getSimOperatorNameForSlot(0)"

    invoke-static {v0, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSimOperatorNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getSimOperatorNameForSlot(1)"

    invoke-static {v1, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->getOperatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "slot0MnoCode"

    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "slot1MnoCode"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, La8/z;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->context:Landroid/content/Context;

    invoke-static {v0}, La8/z;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "IS_L18"

    goto :goto_1

    :cond_2
    const-string v0, "notFold"

    :goto_1
    const-string v1, "deviceType"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "deviceInfo"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lme/w;->o()I

    move-result v0

    const-string v1, "deviceUtil"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "jsonObject.toString()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonParameters"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/miui/networkassistant/ui/network/NetRequest;->INSTANCE:Lcom/miui/networkassistant/ui/network/NetRequest;

    sget-object v1, Lp4/a;->e:Ljava/lang/String;

    const-string p1, "FUNCTION_ITEM_INFO"

    invoke-static {v1, p1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Lcom/miui/networkassistant/ui/bean/FunctionData;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/miui/networkassistant/ui/network/NetRequest;->get$default(Lcom/miui/networkassistant/ui/network/NetRequest;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/Class;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Boolean;ILjava/lang/Object;)V

    return-void
.end method

.method public final getOperatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u4e2d\u56fd\u79fb\u52a8"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CMCC"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "CU"

    :cond_1
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "CT"

    :cond_2
    const-string v1, "\u4e2d\u56fd\u5e7f\u7535"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "CBN"

    :cond_3
    const-string v1, "\u5c0f\u7c73\u79fb\u52a8"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string v0, "MIMOBILE"

    :cond_4
    return-object v0
.end method

.method public final getWeakReference()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/networkassistant/ui/presenter/IFunctionItemView;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/presenter/FunctionItemPresenter;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method
