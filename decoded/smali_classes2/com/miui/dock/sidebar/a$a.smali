.class Lcom/miui/dock/sidebar/a$a;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/dock/sidebar/a;->j(Lcom/miui/dock/sidebar/j;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/dock/sidebar/j;


# direct methods
.method constructor <init>(Lcom/miui/dock/sidebar/j;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/dock/sidebar/a$a;->a:Lcom/miui/dock/sidebar/j;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/dock/sidebar/a$a;->a:Lcom/miui/dock/sidebar/j;

    invoke-static {p1}, Lcom/miui/dock/sidebar/a;->a(Lcom/miui/dock/sidebar/j;)V

    return-void
.end method
