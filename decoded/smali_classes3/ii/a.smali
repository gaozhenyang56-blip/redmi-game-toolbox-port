.class public final synthetic Lii/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lak/l;

.field public final synthetic b:Lii/b;


# direct methods
.method public synthetic constructor <init>(Lak/l;Lii/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lii/a;->a:Lak/l;

    iput-object p2, p0, Lii/a;->b:Lii/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lii/a;->a:Lak/l;

    iget-object v1, p0, Lii/a;->b:Lii/b;

    invoke-static {v0, v1}, Lii/b;->c(Lak/l;Lii/b;)V

    return-void
.end method
