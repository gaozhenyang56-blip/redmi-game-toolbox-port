.class public Lcb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[J

.field public c:[I

.field public d:[J

.field public e:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcb/a$a;->a:[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v2, v1, [J

    iput-object v2, p0, Lcb/a$a;->b:[J

    new-array v2, v0, [I

    iput-object v2, p0, Lcb/a$a;->c:[I

    new-array v2, v0, [J

    iput-object v2, p0, Lcb/a$a;->d:[J

    array-length v2, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x64

    move v5, v2

    move-wide v6, v3

    :goto_0
    const-wide/16 v8, 0x0

    if-ge v5, v0, :cond_0

    :try_start_0
    aget-object v10, p1, v5

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcb/a$a;->a:[Ljava/lang/String;

    aget-object v12, v10, v2

    aput-object v12, v11, v5

    iget-object v11, p0, Lcb/a$a;->d:[J

    const/4 v12, 0x1

    aget-object v10, v10, v12

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v10, p0, Lcb/a$a;->d:[J

    aput-wide v8, v10, v5

    :goto_1
    iget-object v8, p0, Lcb/a$a;->d:[J

    aget-wide v9, v8, v5

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    rem-long v10, v6, v3

    cmp-long p1, v10, v8

    if-eqz p1, :cond_1

    long-to-float p1, v6

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-double v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-long v5, v5

    mul-long v6, v5, v3

    :cond_1
    :goto_2
    if-ge v2, v1, :cond_2

    iget-object p1, p0, Lcb/a$a;->b:[J

    int-to-long v3, v2

    mul-long/2addr v3, v6

    long-to-double v3, v3

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    int-to-long v3, v0

    aput-wide v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 9

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcb/a$a;->e:I

    iget-object v0, p0, Lcb/a$a;->b:[J

    const/4 v1, 0x4

    aget-wide v1, v0, v1

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcb/a$a;->d:[J

    aget-wide v4, v3, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    const/4 v6, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcb/a$a;->c:[I

    aput v6, v3, v0

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcb/a$a;->c:[I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v4, v7

    div-long/2addr v4, v1

    long-to-int v4, v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
