.class public final synthetic Lu3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvf/b;


# direct methods
.method public synthetic constructor <init>(Lvf/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/a;->a:Lvf/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu3/a;->a:Lvf/b;

    invoke-static {v0}, Lu3/c;->d(Lvf/b;)V

    return-void
.end method
