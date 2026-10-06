.class Lzi/m6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lzi/j6;


# direct methods
.method constructor <init>(Lzi/j6;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/m6;->b:Lzi/j6;

    iput-object p2, p0, Lzi/m6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lzi/e2;->h()Lzi/e2;

    move-result-object v0

    iget-object v1, p0, Lzi/m6;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lzi/e2;->g(Ljava/lang/String;Z)Lzi/z1;

    return-void
.end method
