.class Lvd/b$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/b$d;->onActivityChanged(Landroid/content/ComponentName;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvd/b$d;


# direct methods
.method constructor <init>(Lvd/b$d;)V
    .locals 0

    iput-object p1, p0, Lvd/b$d$a;->a:Lvd/b$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lvd/b$d$a;->a:Lvd/b$d;

    iget-object v0, v0, Lvd/b$d;->a:Lvd/b;

    invoke-static {v0}, Lvd/b;->i(Lvd/b;)Lvd/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvd/c;->D(Z)V

    return-void
.end method
