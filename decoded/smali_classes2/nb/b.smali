.class public final synthetic Lnb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnb/b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnb/b;->a:Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->d0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    return-void
.end method
