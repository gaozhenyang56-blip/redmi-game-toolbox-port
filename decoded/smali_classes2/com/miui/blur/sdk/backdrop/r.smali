.class public Lcom/miui/blur/sdk/backdrop/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/blur/sdk/backdrop/r$a;,
        Lcom/miui/blur/sdk/backdrop/r$b;
    }
.end annotation


# static fields
.field private static final c:Lcom/miui/blur/sdk/backdrop/r;

.field private static final d:Z

.field public static final e:Lcom/miui/blur/sdk/backdrop/r;

.field public static final f:Lcom/miui/blur/sdk/backdrop/r;

.field public static final g:Lcom/miui/blur/sdk/backdrop/r;

.field public static final h:Lcom/miui/blur/sdk/backdrop/r;

.field public static final i:Lcom/miui/blur/sdk/backdrop/r;

.field public static final j:Lcom/miui/blur/sdk/backdrop/r;


# instance fields
.field private final a:[Lcom/miui/blur/sdk/backdrop/r$a;

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/blur/sdk/backdrop/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/blur/sdk/backdrop/r;-><init>(I)V

    sput-object v0, Lcom/miui/blur/sdk/backdrop/r;->c:Lcom/miui/blur/sdk/backdrop/r;

    sget-boolean v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->a:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/miui/blur/sdk/backdrop/BlurManager;->b:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    sput-boolean v1, Lcom/miui/blur/sdk/backdrop/r;->d:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    new-instance v4, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v4}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v4, v2}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v4

    const v5, -0x7ba7a7a8

    sget-object v6, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    invoke-virtual {v4, v5, v6}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v4

    const v5, 0x40e3e3e3

    invoke-virtual {v4, v5, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    sput-object v4, Lcom/miui/blur/sdk/backdrop/r;->e:Lcom/miui/blur/sdk/backdrop/r;

    const/16 v4, 0xa

    if-eqz v1, :cond_3

    new-instance v5, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v5}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v5, v4}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v5

    const v6, -0x709f9fa0

    sget-object v7, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    invoke-virtual {v5, v6, v7}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v5

    const v6, -0x5c0d0d0e

    invoke-virtual {v5, v6, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v5

    goto :goto_1

    :cond_3
    move-object v5, v0

    :goto_1
    sput-object v5, Lcom/miui/blur/sdk/backdrop/r;->f:Lcom/miui/blur/sdk/backdrop/r;

    const v5, 0x75737373

    const/16 v6, 0xc

    if-eqz v1, :cond_4

    new-instance v7, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v7}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v7, v6}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v7

    sget-object v8, Landroid/graphics/BlendMode;->COLOR_DODGE:Landroid/graphics/BlendMode;

    invoke-virtual {v7, v5, v8}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v7

    const v8, -0x330a0a0b    # -1.2895428E8f

    invoke-virtual {v7, v8, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v7

    goto :goto_2

    :cond_4
    move-object v7, v0

    :goto_2
    sput-object v7, Lcom/miui/blur/sdk/backdrop/r;->g:Lcom/miui/blur/sdk/backdrop/r;

    if-eqz v1, :cond_5

    new-instance v7, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v7}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v7, v2}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    const v7, 0x618a8a8a

    sget-object v8, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    invoke-virtual {v2, v7, v8}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    const v7, 0x4d424242

    invoke-virtual {v2, v7, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v2

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    sput-object v2, Lcom/miui/blur/sdk/backdrop/r;->h:Lcom/miui/blur/sdk/backdrop/r;

    if-eqz v1, :cond_6

    new-instance v2, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v2}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v2, v4}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    sget-object v4, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    invoke-virtual {v2, v5, v4}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    const v4, -0x75d9d9da    # -7.999784E-33f

    invoke-virtual {v2, v4, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v2

    goto :goto_4

    :cond_6
    move-object v2, v0

    :goto_4
    sput-object v2, Lcom/miui/blur/sdk/backdrop/r;->i:Lcom/miui/blur/sdk/backdrop/r;

    if-eqz v1, :cond_7

    new-instance v0, Lcom/miui/blur/sdk/backdrop/r$b;

    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/r$b;-><init>()V

    invoke-virtual {v0, v6}, Lcom/miui/blur/sdk/backdrop/r$b;->c(I)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v0

    const v1, 0x7f5c5c5c

    sget-object v2, Landroid/graphics/BlendMode;->COLOR_BURN:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v0

    const v1, -0x40e0e0e1

    invoke-virtual {v0, v1, v3}, Lcom/miui/blur/sdk/backdrop/r$b;->a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/blur/sdk/backdrop/r$b;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    :cond_7
    sput-object v0, Lcom/miui/blur/sdk/backdrop/r;->j:Lcom/miui/blur/sdk/backdrop/r;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/blur/sdk/backdrop/r;->b:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/r;->a:[Lcom/miui/blur/sdk/backdrop/r$a;

    return-void
.end method

.method varargs constructor <init>(I[Lcom/miui/blur/sdk/backdrop/r$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/blur/sdk/backdrop/r;->b:I

    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/r;->a:[Lcom/miui/blur/sdk/backdrop/r$a;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/miui/blur/sdk/backdrop/r;->d:Z

    return v0
.end method

.method static synthetic b()Lcom/miui/blur/sdk/backdrop/r;
    .locals 1

    sget-object v0, Lcom/miui/blur/sdk/backdrop/r;->c:Lcom/miui/blur/sdk/backdrop/r;

    return-object v0
.end method


# virtual methods
.method final c()I
    .locals 1

    iget v0, p0, Lcom/miui/blur/sdk/backdrop/r;->b:I

    return v0
.end method

.method final d()[Lcom/miui/blur/sdk/backdrop/r$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/r;->a:[Lcom/miui/blur/sdk/backdrop/r$a;

    return-object v0
.end method
