.class final La7/n$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/n;-><init>(Lcom/miui/gamebooster/service/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "La7/n$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:La7/n;


# direct methods
.method constructor <init>(La7/n;)V
    .locals 0

    iput-object p1, p0, La7/n$c;->a:La7/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()La7/n$b;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, La7/n$b;

    iget-object v1, p0, La7/n$c;->a:La7/n;

    invoke-static {v1}, La7/n;->a(La7/n;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La7/n$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La7/n$c;->a()La7/n$b;

    move-result-object v0

    return-object v0
.end method
