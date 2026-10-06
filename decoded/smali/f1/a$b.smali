.class final Lf1/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf1/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lf1/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lf1/s;)V
    .locals 1
    .param p1    # Lf1/s;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf1/a$b;->a:Ljava/util/List;

    iput-object p1, p0, Lf1/a$b;->b:Lf1/s;

    return-void
.end method

.method synthetic constructor <init>(Lf1/s;Lf1/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf1/a$b;-><init>(Lf1/s;)V

    return-void
.end method

.method static synthetic a(Lf1/a$b;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lf1/a$b;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lf1/a$b;)Lf1/s;
    .locals 0

    iget-object p0, p0, Lf1/a$b;->b:Lf1/s;

    return-object p0
.end method
