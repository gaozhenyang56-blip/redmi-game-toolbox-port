.class public final synthetic Lf5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/edit/DockAppEditActivity;

.field public final synthetic b:Li5/c;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/l;->a:Lcom/miui/dock/edit/DockAppEditActivity;

    iput-object p2, p0, Lf5/l;->b:Li5/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lf5/l;->a:Lcom/miui/dock/edit/DockAppEditActivity;

    iget-object v1, p0, Lf5/l;->b:Li5/c;

    invoke-static {v0, v1}, Lcom/miui/dock/edit/DockAppEditActivity$d;->e(Lcom/miui/dock/edit/DockAppEditActivity;Li5/c;)V

    return-void
.end method
