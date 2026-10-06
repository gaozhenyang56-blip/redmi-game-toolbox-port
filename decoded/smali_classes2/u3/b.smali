.class public final synthetic Lu3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvf/b;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lvf/b;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/b;->a:Lvf/b;

    iput-object p2, p0, Lu3/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lu3/b;->a:Lvf/b;

    iget-object v1, p0, Lu3/b;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lu3/c;->c(Lvf/b;Ljava/util/List;)V

    return-void
.end method
