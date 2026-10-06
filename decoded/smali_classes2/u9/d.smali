.class public final synthetic Lu9/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu9/d;->a:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    iput-boolean p2, p0, Lu9/d;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lu9/d;->a:Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;

    iget-boolean v1, p0, Lu9/d;->b:Z

    invoke-static {v0, v1, p1, p2}, Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;->d0(Lcom/miui/idprovider/ui/legacy/OAIDAppsActivity;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
