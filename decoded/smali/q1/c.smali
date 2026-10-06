.class public Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lq1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq1/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Lg1/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg1/a<",
            "**>;"
        }
    .end annotation
.end field

.field protected c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq1/b;

    invoke-direct {v0}, Lq1/b;-><init>()V

    iput-object v0, p0, Lq1/c;->a:Lq1/b;

    iput-object p1, p0, Lq1/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lq1/b;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/b<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object p1, p0, Lq1/c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public final b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFTT;TT;FFF)TT;"
        }
    .end annotation

    iget-object v0, p0, Lq1/c;->a:Lq1/b;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lq1/b;->a(FFLjava/lang/Object;Ljava/lang/Object;FFF)Lq1/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lq1/c;->a(Lq1/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lg1/a;)V
    .locals 0
    .param p1    # Lg1/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$a;->a:Landroidx/annotation/RestrictTo$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg1/a<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lq1/c;->b:Lg1/a;

    return-void
.end method
