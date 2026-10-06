.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;->accept(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

.field final synthetic b:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;->b:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;

    iput-object p2, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;->a:Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->F1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    return-void
.end method
