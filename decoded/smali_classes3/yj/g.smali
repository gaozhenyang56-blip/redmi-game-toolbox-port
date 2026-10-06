.class final Lyj/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lik/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lik/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/BufferedReader;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/BufferedReader;)V
    .locals 1
    .param p1    # Ljava/io/BufferedReader;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "reader"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyj/g;->a:Ljava/io/BufferedReader;

    return-void
.end method

.method public static final synthetic a(Lyj/g;)Ljava/io/BufferedReader;
    .locals 0

    iget-object p0, p0, Lyj/g;->a:Ljava/io/BufferedReader;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lyj/g$a;

    invoke-direct {v0, p0}, Lyj/g$a;-><init>(Lyj/g;)V

    return-object v0
.end method
