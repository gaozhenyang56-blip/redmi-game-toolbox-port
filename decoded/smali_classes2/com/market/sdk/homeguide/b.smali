.class public Lcom/market/sdk/homeguide/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:[I

.field public b:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/market/sdk/homeguide/b;->a:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/market/sdk/homeguide/b;->b:[I

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/market/sdk/homeguide/b;->b:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market/sdk/homeguide/b;->a:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
