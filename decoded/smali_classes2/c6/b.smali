.class public final synthetic Lc6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb6/c;


# instance fields
.field public final synthetic a:Lc6/c;


# direct methods
.method public synthetic constructor <init>(Lc6/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc6/b;->a:Lc6/c;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lc6/b;->a:Lc6/c;

    invoke-virtual {v0, p1}, Lc6/c;->q(Z)V

    return-void
.end method
