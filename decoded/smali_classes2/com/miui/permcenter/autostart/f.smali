.class public final synthetic Lcom/miui/permcenter/autostart/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;

.field public final synthetic b:Lob/b;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;Lob/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/autostart/f;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;

    iput-object p2, p0, Lcom/miui/permcenter/autostart/f;->b:Lob/b;

    iput-boolean p3, p0, Lcom/miui/permcenter/autostart/f;->c:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/autostart/f;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;

    iget-object v1, p0, Lcom/miui/permcenter/autostart/f;->b:Lob/b;

    iget-boolean v2, p0, Lcom/miui/permcenter/autostart/f;->c:Z

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->d(Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;Lob/b;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
