.class public final synthetic Lgh/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lef/m$a;


# instance fields
.field public final synthetic a:Lgh/b$b;


# direct methods
.method public synthetic constructor <init>(Lgh/b$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh/a;->a:Lgh/b$b;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lgh/a;->a:Lgh/b$b;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lgh/b$b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
