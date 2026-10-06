.class public final synthetic Le5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/drag/DockShortCutMenu;

.field public final synthetic b:Lg5/n;

.field public final synthetic c:Lg5/n;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/drag/DockShortCutMenu;Lg5/n;Lg5/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/m;->a:Lcom/miui/dock/drag/DockShortCutMenu;

    iput-object p2, p0, Le5/m;->b:Lg5/n;

    iput-object p3, p0, Le5/m;->c:Lg5/n;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le5/m;->a:Lcom/miui/dock/drag/DockShortCutMenu;

    iget-object v1, p0, Le5/m;->b:Lg5/n;

    iget-object v2, p0, Le5/m;->c:Lg5/n;

    invoke-static {v0, v1, v2}, Lcom/miui/dock/drag/DockShortCutMenu;->a(Lcom/miui/dock/drag/DockShortCutMenu;Lg5/n;Lg5/n;)V

    return-void
.end method
