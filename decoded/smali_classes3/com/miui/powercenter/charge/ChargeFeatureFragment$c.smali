.class Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/charge/ChargeFeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/charge/ChargeFeatureFragment$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->b:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->c:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d:I

    return p0
.end method

.method static synthetic h(Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d:I

    return p1
.end method


# virtual methods
.method public i()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/powercenter/charge/ChargeFeatureFragment$c;->d:I

    if-ltz v1, :cond_0

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
