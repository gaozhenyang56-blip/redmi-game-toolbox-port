.class Lbl/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/a$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:[Lbl/a$g;

.field private b:[Lbl/a$d;

.field private c:[[Ljava/lang/Object;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbl/a$a;)V
    .locals 0

    invoke-direct {p0}, Lbl/a$i$a;-><init>()V

    return-void
.end method

.method static synthetic a(Lbl/a$i$a;)[Lbl/a$d;
    .locals 0

    iget-object p0, p0, Lbl/a$i$a;->b:[Lbl/a$d;

    return-object p0
.end method

.method static synthetic b(Lbl/a$i$a;[Lbl/a$d;)[Lbl/a$d;
    .locals 0

    iput-object p1, p0, Lbl/a$i$a;->b:[Lbl/a$d;

    return-object p1
.end method

.method static synthetic c(Lbl/a$i$a;)[[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lbl/a$i$a;->c:[[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lbl/a$i$a;[[Ljava/lang/Object;)[[Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lbl/a$i$a;->c:[[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lbl/a$i$a;)[Lbl/a$g;
    .locals 0

    iget-object p0, p0, Lbl/a$i$a;->a:[Lbl/a$g;

    return-object p0
.end method

.method static synthetic f(Lbl/a$i$a;[Lbl/a$g;)[Lbl/a$g;
    .locals 0

    iput-object p1, p0, Lbl/a$i$a;->a:[Lbl/a$g;

    return-object p1
.end method

.method static synthetic g(Lbl/a$i$a;)I
    .locals 0

    iget p0, p0, Lbl/a$i$a;->d:I

    return p0
.end method

.method static synthetic h(Lbl/a$i$a;I)I
    .locals 0

    iput p1, p0, Lbl/a$i$a;->d:I

    return p1
.end method

.method static synthetic i(Lbl/a$i$a;I)I
    .locals 1

    iget v0, p0, Lbl/a$i$a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lbl/a$i$a;->d:I

    return v0
.end method
