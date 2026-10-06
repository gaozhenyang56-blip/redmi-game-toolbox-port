.class public final Lcom/miui/applicationlock/widget/LockPatternView$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field private static final c:[[Lcom/miui/applicationlock/widget/LockPatternView$b;


# instance fields
.field final a:I

.field final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/applicationlock/widget/LockPatternView$b;->b()[[Lcom/miui/applicationlock/widget/LockPatternView$b;

    move-result-object v0

    sput-object v0, Lcom/miui/applicationlock/widget/LockPatternView$b;->c:[[Lcom/miui/applicationlock/widget/LockPatternView$b;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/miui/applicationlock/widget/LockPatternView$b;->a(II)V

    iput p1, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->a:I

    iput p2, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->b:I

    return-void
.end method

.method private static a(II)V
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x2

    if-gt p0, v0, :cond_1

    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "column must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "row must be in range 0-2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b()[[Lcom/miui/applicationlock/widget/LockPatternView$b;
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/miui/applicationlock/widget/LockPatternView$b;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v2

    new-instance v6, Lcom/miui/applicationlock/widget/LockPatternView$b;

    invoke-direct {v6, v2, v4}, Lcom/miui/applicationlock/widget/LockPatternView$b;-><init>(II)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method public static e(II)Lcom/miui/applicationlock/widget/LockPatternView$b;
    .locals 1

    invoke-static {p0, p1}, Lcom/miui/applicationlock/widget/LockPatternView$b;->a(II)V

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$b;->c:[[Lcom/miui/applicationlock/widget/LockPatternView$b;

    aget-object p0, v0, p0

    aget-object p0, p0, p1

    return-object p0
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/applicationlock/widget/LockPatternView$b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
