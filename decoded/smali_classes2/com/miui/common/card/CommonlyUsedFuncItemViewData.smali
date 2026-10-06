.class public Lcom/miui/common/card/CommonlyUsedFuncItemViewData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "CommonlyItemViewData"


# instance fields
.field private final mIcon:Landroid/widget/ImageView;

.field private final mItemContainer:Landroid/view/View;

.field private mPosition:I

.field private final mTitle:Landroid/widget/TextView;

.field private final mUserSetFlag:Landroid/widget/ImageView;

.field private final options:Lrh/c;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lrh/c$b;

    invoke-direct {v0}, Lrh/c$b;-><init>()V

    const v1, 0x7f080823

    invoke-virtual {v0, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object v0

    sget-object v2, Lsh/d;->d:Lsh/d;

    invoke-virtual {v0, v2}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lrh/c$b;->w()Lrh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->options:Lrh/c;

    iput-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mItemContainer:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mTitle:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mUserSetFlag:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private updateSubScript(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/common/card/GridFunctionData;->isNewFeatureAlert()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p3}, Ldd/d;->i(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p3, v0}, Ldd/d;->j(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-static {v1}, Ldd/d;->l(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "#Intent;action=miui.intent.action.GARBAGE_DEEPCLEAN_QQ;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {v1}, Ldd/d;->k(Z)V

    goto :goto_0

    :cond_2
    const-string p1, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/appmanager/AppManageUtils;->v0(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->A0(Z)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->s0()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public fillData(ILcom/miui/common/card/GridFunctionData;)V
    .locals 2

    iput p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mPosition:I

    iget-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mItemContainer:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->isUseLocalPic()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getLocalPicResoourceId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getIcon()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->options:Lrh/c;

    invoke-static {p1, v0, v1}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :goto_0
    iget-object p1, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mUserSetFlag:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/GridFunctionData;->getDataSource()Lcom/miui/common/card/GridFunctionData$DataSource;

    move-result-object p2

    sget-object v0, Lcom/miui/common/card/GridFunctionData$DataSource;->USER_SET:Lcom/miui/common/card/GridFunctionData$DataSource;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getItemContainer()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mItemContainer:Landroid/view/View;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUserSetFlag()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mUserSetFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    instance-of v1, v0, Lcom/miui/common/card/GridFunctionData;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/miui/common/card/GridFunctionData;

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "enter_homepage_way"

    const-string v4, "phone_manage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "#Intent;action=com.xiaomi.market.UPDATE_APP_LIST;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "back"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string v3, "#Intent;action=miui.intent.action.APP_MANAGER;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "enter_way"

    const-string v5, "com.miui.securitycenter"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v3, "#Intent;action=miui.intent.action.KIDMODE_ENTRANCE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "enter_kid_space_channel"

    const-string v5, "phonemanage_page"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v3, "#Intent;action=miui.intent.action.ZMAN_SECURITY_SHARE_SETTING;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->updateSubScript(Lcom/miui/common/card/GridFunctionData;Landroid/view/View;Ljava/lang/String;)V

    sget-object v3, Lcom/miui/common/card/models/FunctionCardModel;->SHOW_ACTION_WHITE_LIST:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const-string v3, "#Intent;component=com.miui.cloudservice/com.miui.cloudservice.ui.MiCloudFindDeviceStatusActivity;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lx4/t;->P(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_5
    const-string v3, "#Intent;action=miui.intent.action.SIM_LOCK_CHOOSE;end"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/simlock/c;->s(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120210

    invoke-static {v2, v3}, Lx4/y1;->j(Landroid/content/Context;I)V

    :cond_7
    :goto_0
    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v2

    new-instance v3, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;

    invoke-direct {v3, p0, v1}, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$1;-><init>(Lcom/miui/common/card/CommonlyUsedFuncItemViewData;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lef/z;->b(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataId()Ljava/lang/String;

    move-result-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mPosition:I

    invoke-static {v2, v3, v1}, Lqf/c;->I0(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    sget-object v2, Lcom/miui/common/card/CommonlyUsedFuncItemViewData$2;->$SwitchMap$com$miui$common$card$GridFunctionData$DataSource:[I

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataSource()Lcom/miui/common/card/GridFunctionData$DataSource;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v4, :cond_c

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12155f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121560

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121561

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f121562

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lgb/b;->d()Lgb/b;

    move-result-object p1

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getH5ClickMonitoringLink()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/miui/common/card/CommonlyUsedFuncItemViewData;->mPosition:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lgb/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "CommonlyItemViewData"

    const-string v2, "onClick error:"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_2
    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getDataId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getStatKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/miui/common/card/GridFunctionData;->getAction()Ljava/lang/String;

    move-result-object p1

    :cond_e
    invoke-static {p1}, Lqf/c;->m0(Ljava/lang/String;)V

    :cond_f
    return-void
.end method
