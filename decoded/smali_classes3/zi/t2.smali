.class public Lzi/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzi/f6;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi/t2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lzi/c6;)V
    .locals 0

    return-void
.end method

.method public a(Lzi/c6;ILjava/lang/Exception;)V
    .locals 0

    iget-object p3, p0, Lzi/t2;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lzi/c6;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lzi/n2;->e(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Lzi/c6;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public b(Lzi/c6;)V
    .locals 0

    iget-object p1, p0, Lzi/t2;->a:Landroid/content/Context;

    invoke-static {p1}, Lzi/n2;->c(Landroid/content/Context;)V

    return-void
.end method
