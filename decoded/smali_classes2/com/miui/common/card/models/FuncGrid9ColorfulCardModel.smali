.class public Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;
.super Lcom/miui/common/card/models/FuncGridBaseCardModel;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f0e00db

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 2

    new-instance v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance p1, Lrh/c$b;

    invoke-direct {p1}, Lrh/c$b;-><init>()V

    const v1, 0x7f080823

    invoke-virtual {p1, v1}, Lrh/c$b;->I(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrh/c$b;->H(I)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrh/c$b;->G(I)Lrh/c$b;

    move-result-object p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1}, Lrh/c$b;->v(Landroid/graphics/Bitmap$Config;)Lrh/c$b;

    move-result-object p1

    sget-object v1, Lsh/d;->d:Lsh/d;

    invoke-virtual {p1, v1}, Lrh/c$b;->C(Lsh/d;)Lrh/c$b;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lrh/c$b;->E(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrh/c$b;->x(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrh/c$b;->y(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1, v1}, Lrh/c$b;->A(Z)Lrh/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lrh/c$b;->w()Lrh/c;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lrh/c;

    return-object v0
.end method
