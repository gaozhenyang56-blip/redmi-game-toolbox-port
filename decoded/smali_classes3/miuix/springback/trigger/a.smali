.class public abstract Lmiuix/springback/trigger/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/springback/trigger/a$c;,
        Lmiuix/springback/trigger/a$b;,
        Lmiuix/springback/trigger/a$d;,
        Lmiuix/springback/trigger/a$a;
    }
.end annotation


# static fields
.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lmiuix/springback/trigger/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    invoke-static {p1}, Lbl/i;->f(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget v0, Lpm/a;->b:I

    goto :goto_1

    :cond_1
    sget v0, Lpm/a;->a:I

    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiuix/springback/trigger/a;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lpm/a;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiuix/springback/trigger/a;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lpm/a;->c:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, Lmiuix/springback/trigger/a;->e:I

    sput p1, Lmiuix/springback/trigger/a;->f:I

    return-void
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/a;->e:I

    return v0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/a;->f:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/a;->c:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lmiuix/springback/trigger/a;->d:I

    return v0
.end method


# virtual methods
.method public e(Lmiuix/springback/trigger/a$a;)V
    .locals 2

    instance-of v0, p1, Lmiuix/springback/trigger/a$c;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmiuix/springback/trigger/a;->b:Lmiuix/springback/trigger/a$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    sget-object v1, Lmiuix/springback/trigger/a$a;->DISTANCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v1, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "action conflict."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiuix/springback/trigger/a$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public g()Lmiuix/springback/trigger/a$b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmiuix/springback/trigger/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/springback/trigger/a$a;

    if-eqz v1, :cond_0

    instance-of v2, v1, Lmiuix/springback/trigger/a$b;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/springback/trigger/a$b;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lmiuix/springback/trigger/a$c;
    .locals 1

    iget-object v0, p0, Lmiuix/springback/trigger/a;->b:Lmiuix/springback/trigger/a$a;

    check-cast v0, Lmiuix/springback/trigger/a$c;

    return-object v0
.end method
