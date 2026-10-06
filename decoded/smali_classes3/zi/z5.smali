.class Lzi/z5;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lzi/y5;


# direct methods
.method constructor <init>(Lzi/y5;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzi/z5;->a:Lzi/y5;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lzi/z5;->a:Lzi/y5;

    invoke-static {v0}, Lzi/y5;->V(Lzi/y5;)Lzi/t5;

    move-result-object v0

    invoke-virtual {v0}, Lzi/t5;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lzi/z5;->a:Lzi/y5;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Lzi/j6;->Q(ILjava/lang/Exception;)V

    :goto_0
    return-void
.end method
