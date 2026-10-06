.class public final Lcom/miui/securityscan/scanner/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/securityscan/scanner/o$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/securityscan/scanner/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->h()Loj/f;

    move-result-object v0

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/o;

    return-object v0
.end method

.method public final b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->i()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->m()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->n()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/antivirus/model/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securityscan/scanner/o;->o()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
