.class Lpg/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpg/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Ljava/lang/Integer;

.field final synthetic c:Lpg/c;


# direct methods
.method private constructor <init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lpg/c$d;->c:Lpg/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lpg/c$d;->a:Ljava/lang/Long;

    iput-object p3, p0, Lpg/c$d;->b:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;Lpg/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lpg/c$d;-><init>(Lpg/c;Ljava/lang/Long;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic a(Lpg/c$d;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lpg/c$d;->a:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic b(Lpg/c$d;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    iput-object p1, p0, Lpg/c$d;->a:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic c(Lpg/c$d;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lpg/c$d;->b:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic d(Lpg/c$d;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    iput-object p1, p0, Lpg/c$d;->b:Ljava/lang/Integer;

    return-object p1
.end method
