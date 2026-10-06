.class Landroidx/fragment/app/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/r0;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/r0;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance p1, Landroidx/fragment/app/n;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/fragment/app/n;-><init>(Z)V

    return-object p1
.end method

.method public synthetic create(Ljava/lang/Class;Lp0/a;)Landroidx/lifecycle/r0;
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/lifecycle/v0;->b(Landroidx/lifecycle/u0$b;Ljava/lang/Class;Lp0/a;)Landroidx/lifecycle/r0;

    move-result-object p1

    return-object p1
.end method
