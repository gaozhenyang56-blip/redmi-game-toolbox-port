.class public final Lek/b;
.super Lek/a;
.source "SourceFile"


# instance fields
.field private final c:Lek/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lek/a;-><init>()V

    new-instance v0, Lek/b$a;

    invoke-direct {v0}, Lek/b$a;-><init>()V

    iput-object v0, p0, Lek/b;->c:Lek/b$a;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/Random;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lek/b;->c:Lek/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "implStorage.get()"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
