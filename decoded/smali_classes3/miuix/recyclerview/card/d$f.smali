.class Lmiuix/recyclerview/card/d$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/recyclerview/card/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$c0;

.field private b:Landroidx/recyclerview/widget/RecyclerView$c0;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/recyclerview/card/d$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    iput-object p2, p0, Lmiuix/recyclerview/card/d$f;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-void
.end method

.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/recyclerview/card/d$f;-><init>(Landroidx/recyclerview/widget/RecyclerView$c0;Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iput p3, p0, Lmiuix/recyclerview/card/d$f;->c:I

    iput p4, p0, Lmiuix/recyclerview/card/d$f;->d:I

    iput p5, p0, Lmiuix/recyclerview/card/d$f;->e:I

    iput p6, p0, Lmiuix/recyclerview/card/d$f;->f:I

    return-void
.end method

.method static synthetic a(Lmiuix/recyclerview/card/d$f;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    iget-object p0, p0, Lmiuix/recyclerview/card/d$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-object p0
.end method

.method static synthetic b(Lmiuix/recyclerview/card/d$f;Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/card/d$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-object p1
.end method

.method static synthetic c(Lmiuix/recyclerview/card/d$f;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    iget-object p0, p0, Lmiuix/recyclerview/card/d$f;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-object p0
.end method

.method static synthetic d(Lmiuix/recyclerview/card/d$f;Landroidx/recyclerview/widget/RecyclerView$c0;)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0

    iput-object p1, p0, Lmiuix/recyclerview/card/d$f;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    return-object p1
.end method

.method static synthetic e(Lmiuix/recyclerview/card/d$f;)I
    .locals 0

    iget p0, p0, Lmiuix/recyclerview/card/d$f;->e:I

    return p0
.end method

.method static synthetic f(Lmiuix/recyclerview/card/d$f;)I
    .locals 0

    iget p0, p0, Lmiuix/recyclerview/card/d$f;->c:I

    return p0
.end method

.method static synthetic g(Lmiuix/recyclerview/card/d$f;)I
    .locals 0

    iget p0, p0, Lmiuix/recyclerview/card/d$f;->f:I

    return p0
.end method

.method static synthetic h(Lmiuix/recyclerview/card/d$f;)I
    .locals 0

    iget p0, p0, Lmiuix/recyclerview/card/d$f;->d:I

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChangeInfo{oldHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/recyclerview/card/d$f;->a:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newHolder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/recyclerview/card/d$f;->b:Landroidx/recyclerview/widget/RecyclerView$c0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/recyclerview/card/d$f;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/recyclerview/card/d$f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/recyclerview/card/d$f;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/recyclerview/card/d$f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
