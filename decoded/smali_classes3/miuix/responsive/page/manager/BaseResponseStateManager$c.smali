.class Lmiuix/responsive/page/manager/BaseResponseStateManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lim/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/responsive/page/manager/BaseResponseStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lim/b<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Lim/c;

.field final synthetic c:Lmiuix/responsive/page/manager/BaseResponseStateManager;


# direct methods
.method public constructor <init>(Lmiuix/responsive/page/manager/BaseResponseStateManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->c:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->a:Landroid/view/View;

    return-void
.end method

.method private a(Landroid/content/res/Configuration;Ljm/e;Z)V
    .locals 2

    iget-object v0, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->c:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object v0, v0, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveMapChild:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->b:Lim/c;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3, v0}, Lim/c;->a(Landroid/content/res/Configuration;Ljm/e;ZLjava/util/List;)Z

    move-result p3

    if-nez p3, :cond_4

    :cond_0
    iget-object p3, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->c:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    iget-object p3, p3, Lmiuix/responsive/page/manager/BaseResponseStateManager;->mResponsiveViewGroup:Landroid/util/ArrayMap;

    iget-object v1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljm/d;

    invoke-virtual {p3}, Ljm/d;->a()I

    move-result p3

    if-nez p1, :cond_1

    iget-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->c:Lmiuix/responsive/page/manager/BaseResponseStateManager;

    invoke-virtual {p1}, Lmiuix/responsive/page/manager/a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    :cond_1
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1, p3}, Ljm/a;->a(II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljm/d;

    invoke-virtual {p3, p2}, Ljm/d;->d(Ljm/e;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljm/d;

    invoke-virtual {p2}, Ljm/d;->b()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public b()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lim/c;)V
    .locals 0

    iput-object p1, p0, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->b:Lim/c;

    return-void
.end method

.method public synthetic dispatchResponsiveLayout(Landroid/content/res/Configuration;Ljm/e;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lim/a;->a(Lim/b;Landroid/content/res/Configuration;Ljm/e;Z)V

    return-void
.end method

.method public bridge synthetic getResponsiveSubject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResponsiveLayout(Landroid/content/res/Configuration;Ljm/e;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/responsive/page/manager/BaseResponseStateManager$c;->a(Landroid/content/res/Configuration;Ljm/e;Z)V

    return-void
.end method
