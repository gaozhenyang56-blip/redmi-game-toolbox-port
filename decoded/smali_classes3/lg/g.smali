.class public Llg/g;
.super Llg/k;
.source "SourceFile"


# instance fields
.field private c:Lkg/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llg/k;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    new-instance p2, Lkg/a;

    invoke-direct {p2, p1}, Lkg/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Llg/g;->c:Lkg/a;

    return-void
.end method


# virtual methods
.method public b(Z)V
    .locals 0

    iget-object p1, p0, Llg/g;->c:Lkg/a;

    invoke-virtual {p1}, Lkg/a;->t()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Llg/g;->c:Lkg/a;

    invoke-virtual {v0}, Lkg/a;->t()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-super {p0}, Llg/k;->e()V

    return-void
.end method
