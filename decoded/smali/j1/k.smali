.class public Lj1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lj1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:Lj1/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj1/a;Lj1/a;Lj1/b;Lj1/b;)V
    .locals 0
    .param p1    # Lj1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lj1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lj1/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj1/k;->a:Lj1/a;

    iput-object p2, p0, Lj1/k;->b:Lj1/a;

    iput-object p3, p0, Lj1/k;->c:Lj1/b;

    iput-object p4, p0, Lj1/k;->d:Lj1/b;

    return-void
.end method
