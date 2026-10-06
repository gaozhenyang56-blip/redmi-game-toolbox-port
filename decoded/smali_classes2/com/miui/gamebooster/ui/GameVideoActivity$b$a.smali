.class Lcom/miui/gamebooster/ui/GameVideoActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/GameVideoActivity$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/GameVideoActivity$b;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/GameVideoActivity$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/GameVideoActivity$b$a;->a:Lcom/miui/gamebooster/ui/GameVideoActivity$b;

    iget-object v0, v0, Lcom/miui/gamebooster/ui/GameVideoActivity$b;->a:Lcom/miui/gamebooster/ui/GameVideoActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameVideoActivity;->i0(Lcom/miui/gamebooster/ui/GameVideoActivity;)V

    return-void
.end method
