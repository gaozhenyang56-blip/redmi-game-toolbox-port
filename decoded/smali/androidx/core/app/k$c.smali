.class public Landroidx/core/app/k$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroidx/core/app/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/app/k;

    invoke-direct {v0, p1, p2}, Landroidx/core/app/k;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Landroidx/core/app/k$c;->a:Landroidx/core/app/k;

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/app/k;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/k$c;->a:Landroidx/core/app/k;

    return-object v0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/k$c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/core/app/k$c;->a:Landroidx/core/app/k;

    iput-object p1, v0, Landroidx/core/app/k;->b:Ljava/lang/CharSequence;

    return-object p0
.end method
