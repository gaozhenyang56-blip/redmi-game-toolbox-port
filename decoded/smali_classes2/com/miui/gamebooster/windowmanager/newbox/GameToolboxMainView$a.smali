.class Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$a;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView$a;->e:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    invoke-static {v0}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->n(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/n;

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/n;->j()Ln6/h;

    move-result-object p1

    sget-object v0, Ln6/h;->c:Ln6/h;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
