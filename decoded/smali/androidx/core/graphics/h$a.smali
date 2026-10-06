.class public Landroidx/core/graphics/h$a;
.super Landroidx/core/provider/FontsContractCompat$FontRequestCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroidx/core/content/res/g$e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/core/content/res/g$e;)V
    .locals 0
    .param p1    # Landroidx/core/content/res/g$e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/core/provider/FontsContractCompat$FontRequestCallback;-><init>()V

    iput-object p1, p0, Landroidx/core/graphics/h$a;->a:Landroidx/core/content/res/g$e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Landroidx/core/graphics/h$a;->a:Landroidx/core/content/res/g$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/content/res/g$e;->onFontRetrievalFailed(I)V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/core/graphics/h$a;->a:Landroidx/core/content/res/g$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/core/content/res/g$e;->onFontRetrieved(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method
