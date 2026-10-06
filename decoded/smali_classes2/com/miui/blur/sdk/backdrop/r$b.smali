.class public Lcom/miui/blur/sdk/backdrop/r$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/blur/sdk/backdrop/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/blur/sdk/backdrop/r$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/r$b;->b:Ljava/util/List;

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/blur/sdk/backdrop/r$b;->a:I

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/BlendMode;)Lcom/miui/blur/sdk/backdrop/r$b;
    .locals 2

    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/r$b;->b:Ljava/util/List;

    new-instance v1, Lcom/miui/blur/sdk/backdrop/r$a;

    invoke-direct {v1, p1, p2}, Lcom/miui/blur/sdk/backdrop/r$a;-><init>(ILandroid/graphics/BlendMode;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b()Lcom/miui/blur/sdk/backdrop/r;
    .locals 4

    invoke-static {}, Lcom/miui/blur/sdk/backdrop/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/blur/sdk/backdrop/r;

    iget v1, p0, Lcom/miui/blur/sdk/backdrop/r$b;->a:I

    iget-object v2, p0, Lcom/miui/blur/sdk/backdrop/r$b;->b:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/miui/blur/sdk/backdrop/r$a;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/miui/blur/sdk/backdrop/r$a;

    invoke-direct {v0, v1, v2}, Lcom/miui/blur/sdk/backdrop/r;-><init>(I[Lcom/miui/blur/sdk/backdrop/r$a;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/r;->b()Lcom/miui/blur/sdk/backdrop/r;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(I)Lcom/miui/blur/sdk/backdrop/r$b;
    .locals 0

    iput p1, p0, Lcom/miui/blur/sdk/backdrop/r$b;->a:I

    return-object p0
.end method
