.class Lbi/k$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbi/k$j;


# direct methods
.method private constructor <init>(Lbi/k$j;)V
    .locals 0

    iput-object p1, p0, Lbi/k$j$a;->a:Lbi/k$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbi/k$j;Lbi/k$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lbi/k$j$a;-><init>(Lbi/k$j;)V

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbi/k$j$a;->a:Lbi/k$j;

    iget-object v0, v0, Lbi/k$j;->b:Lbi/k;

    invoke-static {v0}, Lbi/k;->x(Lbi/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbi/k$e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lbi/k$e;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
