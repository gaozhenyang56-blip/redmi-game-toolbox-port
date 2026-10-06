.class public Lx6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field public b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field public c:I

.field public d:Z


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lx6/c;->a:I

    iput p2, p0, Lx6/c;->b:I

    iput p3, p0, Lx6/c;->c:I

    iput-boolean p4, p0, Lx6/c;->d:Z

    return-void
.end method
