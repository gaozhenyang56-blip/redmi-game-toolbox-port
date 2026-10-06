.class public Lcd/f;
.super Lcom/miui/common/card/models/TitleCardModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcd/f$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f0e0421

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/TitleCardModel;-><init>(I)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcd/f$a;

    invoke-direct {v0, p1}, Lcd/f$a;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b025b

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/card/models/TitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/miui/securityscan/MainActivity;

    invoke-virtual {p1, p0, v0}, Lcom/miui/securityscan/MainActivity;->w0(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;)V

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/miui/appmanager/AppManageUtils;->N(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ldd/d;->m(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
