.class Lcom/miui/securityscan/MainFragment$k;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/MainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/securityscan/MainFragment;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 5

    iget-object v0, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    iget-object v0, v0, Lcom/miui/securityscan/MainFragment;->y:Lcom/miui/common/card/CardViewRvAdapter;

    invoke-virtual {v0}, Lcom/miui/common/card/CardViewRvAdapter;->getModelList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_14

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, p1, Lcom/miui/common/card/models/FuncGrid6CardModel;

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v0, :cond_4

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->g0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-eq p1, v3, :cond_2

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1

    :cond_3
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v3

    :cond_4
    instance-of v0, p1, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;

    const/4 v4, 0x2

    if-eqz v0, :cond_9

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_5

    return v3

    :cond_5
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->g0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-eq p1, v3, :cond_7

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-ne p1, v2, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v3

    :cond_8
    return v4

    :cond_9
    instance-of p1, p1, Lcom/miui/common/card/models/CommonlyUsedFunctionCardModelNew;

    const/16 v0, 0xf

    if-eqz p1, :cond_f

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_a

    return v0

    :cond_a
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->g0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-eq p1, v3, :cond_d

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-ne p1, v2, :cond_b

    goto :goto_2

    :cond_b
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v0, "cetus"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    return v3

    :cond_c
    return v4

    :cond_d
    :goto_2
    return v1

    :cond_e
    return v4

    :cond_f
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_10

    return v0

    :cond_10
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->g0(Lcom/miui/securityscan/MainFragment;)Z

    move-result p1

    const/4 v1, 0x6

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-eq p1, v3, :cond_12

    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->h0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    if-ne p1, v2, :cond_11

    goto :goto_3

    :cond_11
    return v1

    :cond_12
    :goto_3
    return v0

    :cond_13
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v1

    :cond_14
    iget-object p1, p0, Lcom/miui/securityscan/MainFragment$k;->e:Lcom/miui/securityscan/MainFragment;

    invoke-static {p1}, Lcom/miui/securityscan/MainFragment;->v0(Lcom/miui/securityscan/MainFragment;)I

    move-result p1

    return p1
.end method
