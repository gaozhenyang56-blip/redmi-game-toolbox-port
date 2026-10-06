.class public Ltb/b$c;
.super Ltb/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/miui/permcenter/detection/model/b;",
        ">",
        "Ltb/b$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private d:Ltb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb/a<",
            "Lcom/miui/permcenter/detection/model/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Ltb/b$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltb/b$b;-><init>(Landroid/view/View;Ltb/b$d;)V

    const p2, 0x7f0b08f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/recyclerview/widget/RecyclerView;

    new-instance p2, Ltb/a;

    invoke-direct {p2}, Ltb/a;-><init>()V

    iput-object p2, p0, Ltb/b$c;->d:Ltb/a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/detection/model/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Ltb/b$b;->a(Lcom/miui/permcenter/detection/model/b;)V

    instance-of v0, p1, Lcom/miui/permcenter/detection/model/d;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/detection/model/d;

    iget-object v0, p0, Ltb/b$c;->d:Ltb/a;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/d;->i()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ltb/a;->m(Ljava/util/List;)V

    :cond_0
    return-void
.end method
