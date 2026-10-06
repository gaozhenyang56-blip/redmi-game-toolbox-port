.class Lmiuix/internal/widget/f$f;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/internal/widget/f;


# direct methods
.method public constructor <init>(Lmiuix/internal/widget/f;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lmiuix/internal/widget/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lmiuix/internal/widget/f$f;->a:Lmiuix/internal/widget/f;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lmiuix/internal/widget/f$f;->a:Lmiuix/internal/widget/f;

    invoke-static {v0, p1}, Lmiuix/internal/widget/f;->access$400(Lmiuix/internal/widget/f;Landroid/content/res/Configuration;)V

    return-void
.end method
