.class public Lzi/c5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/a5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi/c5$a;
    }
.end annotation


# instance fields
.field private a:Lzi/a5;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzi/d5;)V
    .locals 0

    invoke-direct {p0}, Lzi/c5;-><init>()V

    return-void
.end method

.method public static c()Lzi/c5;
    .locals 1

    invoke-static {}, Lzi/c5$a;->a()Lzi/c5;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lzi/c5;->a:Lzi/a5;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lzi/a5;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b(Lzi/z4;)V
    .locals 1

    iget-object v0, p0, Lzi/c5;->a:Lzi/a5;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lzi/a5;->b(Lzi/z4;)V

    :cond_0
    return-void
.end method
