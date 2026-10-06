.class final Lcom/miui/international/bean/a$a;
.super Lcom/miui/common/card/BaseViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/international/bean/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/miui/common/card/models/BaseCardModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "itemView"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p2, Lcom/miui/international/bean/a;

    if-eqz p3, :cond_0

    const p3, 0x7f080f91

    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    check-cast p2, Lcom/miui/international/bean/a;

    invoke-virtual {p2, p1}, Lcom/miui/international/bean/a;->bindView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
